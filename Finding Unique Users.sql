SELECT DISTINCT sender_id
FROM tg_comments.messages
WHERE sender_type = 'USER' AND channel_id IN (
  SELECT DISTINCT channel_id
  FROM tg_comments.messages
  GROUP BY channel_id, sender_id
  HAVING COUNT(DISTINCT id) >= 1
) 
GROUP BY sender_id
HAVING COUNT(DISTINCT channel_id) >= 2