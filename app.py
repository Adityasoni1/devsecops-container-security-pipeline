import http.server
import socketserver

PORT = 8080
Handler = http.server.SimpleHTTPRequestHandler

print(f"Container service running on port {PORT}")
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    httpd.serve_forever()
  
