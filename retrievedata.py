import rethinkdb as r

# Connect to the RethinkDB server
conn = r.connect(host='localhost', port=28015, db='rethinkdb')

# Get cache information from the system table
cache_info = r.db('rethinkdb').table('server_status').get(1).run(conn)

# Print cache information
print("Cache Information:")
print("Total Cache Size: {} MB".format(cache_info['http_cache']['total_size']))
print("Cache In Use: {} MB".format(cache_info['http_cache']['in_use_size']))
print("Cache Free: {} MB".format(cache_info['http_cache']['free_size']))

# Close the connection
conn.close()
