CREATE TABLE roles (
    id   BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),

    PRIMARY KEY (id)
);

CREATE TABLE users (
    id   BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    role_id BIGINT NOT NULL,

    PRIMARY KEY (id),

    FOREIGN KEY (role_id) REFERENCES roles (id)
);

CREATE TABLE content_categories (
    id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE content (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    category_id BIGINT NOT NULL,

    PRIMARY KEY (id),

    FOREIGN KEY (category_id) REFERENCES content_categories(id)
);
