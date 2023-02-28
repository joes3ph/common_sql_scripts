# 批量kill所有会话
SELECT 'alter system kill session '''|| SID || ',' || SERIAL# ||''';' 
FROM V$SESSION;
