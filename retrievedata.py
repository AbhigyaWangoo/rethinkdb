from rethinkdb import r

connection = r.connect()

r.table_create('usertable').run(connection)

# Insert data into the "users" table


# user_data = {
#     'name': 'John Doe',
#     'age': 30,
#     'email': 'john.doe@example.com'
# }

# r.table('users').insert(user_data).run(connection)

# # Query the data from the table
# cursor = r.table('users').run(connection)
# for document in cursor:
#     print(document)

# Close the connection
connection.close()

# Get cache information from the system table
# cache_info = r.db('rethinkdb').table('server_status').get(1).run(connection)

# Print cache information
#print("Cache Information:")
#print(cache_info)
#print(f"Total Cache Size: {cache_info['http_cache']['total_size']} MB")
#print(f"Cache In Use: {cache_info['http_cache']['in_use_size']} MB")
#print(f"Cache Free: {cache_info['http_cache']['free_size']} MB")
