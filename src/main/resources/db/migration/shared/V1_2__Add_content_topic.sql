CREATE TABLE content_topics (
    id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

ALTER TABLE content
    ADD COLUMN topic_id BIGINT,
    ADD CONSTRAINT FOREIGN KEY (topic_id) REFERENCES content_topics(id);
