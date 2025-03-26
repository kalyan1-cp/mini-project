CREATE TABLE `attacker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `fname` text,
  `sk` text,
  `dt` text,
  `attacktype` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text,
  `owner` text,
  `trapdoor` text,
  `audit_status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `cloud` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `cloudserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) DEFAULT NULL,
  `dt` text,
  `downer` text,
  `enckey` text,
  `dupli_check` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `deduplication_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_file` text,
  `current_file_owner` text,
  `present_file` text,
  `present_file_owner` text,
  `trapdoor` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `downer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `encryptkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `downer` text,
  `fname` text,
  `enkey` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `ownerfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) DEFAULT NULL,
  `dt` text,
  `downer` text,
  `enckey` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `owner` text,
  `fname` text,
  `secretkey` text,
  `decryptkey` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `shared_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dupli_file` text,
  `dupli_file_owner` text,
  `shared_file` text,
  `shared_file_owner` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `fname` text,
  `task` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
