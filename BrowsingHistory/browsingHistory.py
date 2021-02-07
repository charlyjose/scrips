import sqlite3
import re

conn = sqlite3.connect('History')
print("Connections: ", conn.total_changes)
c = conn.cursor()

'''
c.execute('SELECT last_visit_time, visit_count, typed_count, title, url from urls')
print(c.fetchone())
'''

items = c.execute('SELECT datetime(last_visit_time/1000000-11644473600,\'unixepoch\'), visit_count, typed_count, title, url from urls').fetchall()
# print(rows)
# print(rows[4])

patterns = ['linkedin']

with open('HistoryNew.txt', 'a') as f:
    for item in items:
        for pattern in patterns:
            if re.search(pattern, item[4]):
                # print(item)
                f.write("\n" % item)
    f.close()