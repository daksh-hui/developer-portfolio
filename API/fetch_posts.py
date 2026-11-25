import json
import urllib.request

url = "https://jsonplaceholder.typicode.com/posts"

print("Connecting to API...")

with urllib.request.urlopen(url) as response:
    data = json.loads(response.read().decode("utf-8"))

with open("API/response.json", "w") as file:
    json.dump(data[:10], file, indent=4)

print("API request successful!")
print("10 posts saved in response.json")
