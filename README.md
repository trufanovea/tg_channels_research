# tg_channels_research
Searching for bots in telegram channels

This project aims to parse a list of Telegram channels and extract relevant information from the comments. 

The provided Telegram channels are:

Title	URL
ZERGULIO🇷🇺	https://t.me/SergeyKolyasnikov
RT на русском	https://t.me/rt_russian
360tv	https://t.me/tv360
Лентач	https://t.me/oldlentach
МИД России 🇷🇺	https://t.me/MID_Russia
Пул N3	https://t.me/dimsmirnov175
URA.RU	https://t.me/uranews
Караульный Z	https://t.me/karaulny
Daily Storm	https://t.me/stormdaily
SHOT	https://t.me/shot_shot
Постовой	https://t.me/Postovo
Милитарист	https://t.me/infantmilitario
Ньюсач/Двач	https://t.me/ru2ch
СВЕЖЕСТИ	https://t.me/svezhesti
Операция Z	https://t.me/RVvoenkor
ВЫ СЛУШАЛИ МАЯК	https://t.me/youlistenedmayak
Лента добра	https://t.me/lentalite
Предпринимайте!	https://t.me/subsidii_msk
Оперативные сводки	https://t.me/opersvodki
Lomovka	https://t.me/lomovkaa
Иди и смотри	https://t.me/smotri_z

The goal of this project is to find duplicate comments across different channels posted by users (sender_id). 

The data file (.sql) is available on the following link:

https://drive.google.com/file/d/1ONBeAb-FnqvOsSP1gmQqfhMILDxOqMF-

The data structure includes the following fields:

channel_id: ID of the chat/channel
sender_id: ID of the sender (if it is a user of the channel)
sender_type: Type of the sender (USER, CHANNEL, or ANONYMOUS)
post: Boolean indicating whether it is a channel post or a regular message
replies: Boolean indicating if there are comments/replies within the post
reply_to: ID of the message being replied to
reply_to_top: ID of the top-level post to understand the context of the comment
forwarded: Boolean indicating if the message was forwarded
time_create: Date and time of message creation
message: Text content of the message or a specific type indicator (e.g., GEO, WEB_PAGE, MEDIA)

Task 1: Finding Unique Users
The first task is to identify unique sender_id values with the USER type who have left one or more messages in different channels.

Task 2: Counting Top Posts with Most Replies
The second task involves calculating the top 5 posts with the highest number of replies and identifying the channels they belong to.

Task 3: Analyzing Popular Words and Reply Count
The third task focuses on determining the most popular words (more than 4 letters long) in the most popular posts. Additionally, it aims to establish the
