INSERT INTO
    users (id, name, role_id)
    VALUES (301, 'Developer 1', 2), (302, 'Developer 2', 2)
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`), role_id=VALUES(`role_id`);
