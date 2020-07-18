INSERT INTO
    users (id, name, role_id)
    VALUES (201, 'SuperAdmin', 1)
    ON DUPLICATE KEY UPDATE id=id, name=VALUES(`name`), role_id=VALUES(`role_id`);
