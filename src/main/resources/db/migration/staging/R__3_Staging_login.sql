INSERT INTO
    users (id, name, role_id)
    VALUES (301, 'QA 1', 3), (302, 'QA 2', 3)
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`), role_id=VALUES(`role_id`);
