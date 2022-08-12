-- CreateTable
CREATE TABLE `comments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `comment` VARCHAR(2000) NOT NULL,
    `posting_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `posting_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `posting_id` INTEGER NOT NULL,
    `image_url` VARCHAR(3000) NOT NULL,
    `image_alt` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `postings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `like` INTEGER NOT NULL,
    `contents` VARCHAR(2000) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(12) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `description` VARCHAR(20) NULL,
    `password` VARCHAR(20) NOT NULL,
    `profile_image` VARCHAR(3000) NOT NULL,

    UNIQUE INDEX `user_id`(`user_id`),
    UNIQUE INDEX `email`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
