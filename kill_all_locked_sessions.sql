# 批量kill所有带锁的会话
SELECT 'alter system kill session ''' || SID || ',' || SERIAL# || ''';'
FROM V$SESSION
WHERE SID in
      (SELECT SESSION_ID
      FROM V$LOCKED_OBJECT, USER_OBJECTS
      WHERE V$LOCKED_OBJECT.OBJECT_ID = USER_OBJECTS.OBJECT_ID);
