SELECT s.username,
       l.OBJECT_ID,
       l.SESSION_ID,
       s.SERIAL#,
       l.ORACLE_USERNAME,
       l.OS_USER_NAME,
       l.PROCESS
FROM V$LOCKED_OBJECT l, V$SESSION S
WHERE l.SESSION_ID = S.SID;
