import socket as s

host_name = s.gethostname()
host_ip = s.gethostbyname(host_name)
# host_ip = '127.0.0.1'

server = s.socket(s.AF_INET, s.SOCK_STREAM)

server.bind((host_ip, 8080))

print(f'Listening at ip {host_ip} at port 8080')

server.listen()

client, _ = server.accept()

client.send(b'hello')

client.close()

server.close()
