INSERT INTO
    roles (id, name)
    VALUES (1, 'System'), (2, 'Admin'), (3, 'User')
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`);

INSERT INTO
    content_categories (id, name)
    VALUES (1, 'Category 1'), (2, 'Category 2')
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`);

# INSERT statements for the First Run
# Comment out for the Third Run
########################################################################################################################
INSERT INTO
    content (id, name, category_id)
VALUES (1, 'Content 1.1', 1), (2, 'Content 1.2', 1),
       (3, 'Content 2.1', 2), (4, 'Content 2.2', 2)
ON DUPLICATE KEY UPDATE id=id, name=VALUES(`id`), category_id=VALUES(`category_id`);
########################################################################################################################

# INSERT statements for the Third Run
# Uncomment for the Third Run
########################################################################################################################
# INSERT INTO
#     content_topics (id, name)
#     VALUES (1, 'Topic 1'), (2, 'Topic 2')
#     ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`);
#
# INSERT INTO
#     content (id, name, category_id, topic_id)
# VALUES (1, 'Content 1.1', 1, 1), (2, 'Content 1.2', 1, 2),
#        (3, 'Content 2.1', 2, 2), (4, 'Content 2.2', 2, 1)
# ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`), category_id=VALUES(`category_id`), topic_id=VALUES(`topic_id`);
########################################################################################################################
