--[[
	The use of a MySQL database is completely optional.
	This gamemode will be using gmsv_mysqloo which can be
	found at: http://facepunch.com/showthread.php?t=1220537

	Thanks to Drakehawke.

	IMPORTANT! Make sure that you execute the .sql file included in gamemodes/Garrymon
	Otherwise your gamemode will not use MySQL correctly.
--]]

pkmn_USE_MYSQL = false; -- True/false to set whether MySQL is used.

local MYSQL_HOSTNAME = "xeramgaming.com"; -- The host of your database.
local MYSQL_USERNAME = "Username"; -- Which user it will be logged in with.
local MYSQL_PASSWORD = "Password"; -- The password for the user.
local MYSQL_DATABASE = "xeramgam_gmod"; -- Which database contains the tables.
local MYSQL_PORT = 3306; -- The port for the database. Default is 3306.

-- You shouldn't be changing anything below this line
-- unless you want to modify which module to use or something else.

Garrymon.db = Garrymon.db or {};

-- These are assumed tables that are assumed already made.
-- Used in the persist functions.
Garrymon.db.tables = {
  quest = {table = "Quest", data = "string"},
};

function Garrymon.db:Connect()
  if (self.obj) then
    print("[Garrymon] MySQL connection already exists.");

    return;
  end;

  print("[Garrymon] Loading MySQL...");

  local database = mysqloo.connect(MYSQL_HOSTNAME, MYSQL_USERNAME, MYSQL_PASSWORD, MYSQL_DATABASE, MYSQL_PORT);

  function database:onConnected()
    Garrymon.db.obj = self;

    MsgC(Color(0, 255, 0), "[Garrymon] Connected to the database!\n");
  end;

  function database:onConnectionFailed(message)
    MsgC(Color(255, 0, 0), "[Garrymon] Connection failed! "..message.."\n");
    MsgC(Color(255, 0, 0), "[Garrymon] Reverting to file/SQLite storage.\n");

    pkmn_USE_MYSQL = false;
  end;

  if (database) then
    database:connect();

    timer.Create("pkmn_SQLHeartBeat", 30, 0, function()
      if (pkmn_USE_MYSQL) then
      Garrymon.db:Query("SELECT 1 + 1");
    end;
  end);
end;
end;

function Garrymon.db:Query(query, Callback)
if (!query) then
  return;
end;

if (!pkmn_USE_MYSQL or !self.obj) then
  MsgC(Color(255, 255, 0), "[Garrymon MySQL] Warning! A query is being made but no database!\n");

  return;
end;

local query = self.obj:query(query);
if (Callback) then
  function query:onSuccess(data)
    Callback(data);
  end;
end;

function query:onError(message, sql)
  MsgC(Color(255, 0, 0), "[Garrymon] Query Error! "..message.."\n");
  MsgC(Color(255, 0, 0), "[Garrymon] "..sql.."\n");
end;
query:start();
end;

if (!pkmn_USE_MYSQL) then
MsgC(Color(255, 0, 0), "[Garrymon] Not using MySQL, switching to file/SQLite storage.\n");

return;
else
require("mysqloo");

Garrymon.db:Connect();
end;
