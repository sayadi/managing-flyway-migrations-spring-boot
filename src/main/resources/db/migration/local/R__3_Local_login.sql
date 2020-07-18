INSERT INTO
    users (id, name, role_id)
    VALUES (301, 'LocalAdmin', 1)
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`), role_id=VALUES(`role_id`);
