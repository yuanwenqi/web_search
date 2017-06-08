PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2017-06-08 18:18:15.710583');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2017-06-08 18:18:15.729397');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2017-06-08 18:18:15.747216');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2017-06-08 18:18:15.761451');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2017-06-08 18:18:15.783962');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2017-06-08 18:18:15.792040');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2017-06-08 18:18:15.804936');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2017-06-08 18:18:15.817864');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2017-06-08 18:18:15.842984');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2017-06-08 18:18:15.845220');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2017-06-08 18:18:15.858402');
INSERT INTO "django_migrations" VALUES(12,'auth','0008_alter_user_username_max_length','2017-06-08 18:18:15.872610');
INSERT INTO "django_migrations" VALUES(13,'myapp','0001_initial','2017-06-08 18:18:15.882919');
INSERT INTO "django_migrations" VALUES(14,'myapp','0002_auto_20170608_1805','2017-06-08 18:18:15.891930');
INSERT INTO "django_migrations" VALUES(15,'sessions','0001_initial','2017-06-08 18:18:15.895452');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'myapp','records');
INSERT INTO "django_content_type" VALUES(2,'admin','logentry');
INSERT INTO "django_content_type" VALUES(3,'auth','permission');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'auth','group');
INSERT INTO "django_content_type" VALUES(6,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(7,'sessions','session');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_records','Can add records');
INSERT INTO "auth_permission" VALUES(2,1,'change_records','Can change records');
INSERT INTO "auth_permission" VALUES(3,1,'delete_records','Can delete records');
INSERT INTO "auth_permission" VALUES(4,2,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(5,2,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(6,2,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(7,3,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(8,3,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(9,3,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(10,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(11,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(12,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(13,5,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(14,5,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(15,5,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(16,6,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(17,6,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(18,6,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(19,7,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(20,7,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(21,7,'delete_session','Can delete session');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
CREATE TABLE "myapp_records" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title_text" varchar(200) NOT NULL, "link_url" varchar(200) NOT NULL, "discribe_text" varchar(200) NOT NULL);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',15);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',0);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',7);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',21);
INSERT INTO "sqlite_sequence" VALUES('auth_user',0);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;