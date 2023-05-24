SELECT channel_id, reply_to_top, COUNT(*) AS replies_count
FROM tg_comments.messages
WHERE reply_to_top IS NOT NULL
GROUP BY channel_id, reply_to_top
ORDER BY replies_count DESC
LIMIT 5