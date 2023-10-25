import rethinkdb as r

# Connect to the RethinkDB server
conn = r.connect(host='localhost', port=28015, db='rethinkdb')

# Get cache information from the system table
cache_info = r.db('rethinkdb').table('server_status').get(1).run(conn)

# Print cache information
print("Cache Information:")
print(f"Total Cache Size: {cache_info['http_cache']['total_size']} MB")
print(f"Cache In Use: {cache_info['http_cache']['in_use_size']} MB")
print(f"Cache Free: {cache_info['http_cache']['free_size']} MB")

# Close the connection
conn.close()
