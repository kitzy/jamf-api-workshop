# curl Reference

## Flags

| Flag           | Description                            |
|----------------|----------------------------------------|
| -u, --user	 | User name and password for auth        |
| -s, --silent   | Silent or quiet mode                   |
| -H, --header	 | Extra header to include in the request |
| -X, --request  | Specify a custom request method        |
| -d, --data     | Send data in a POST or PUT request     |
| -F, --form     | Upload a file to an HTTP server        |

## Request Types

| Request | Action |
|---------|--------|
| GET     | Read   |
| PUT     | Update |
| POST    | Create |
| DELETE  | Delete |

## Request Headers

| Header                         | Description                  |
|--------------------------------|------------------------------|
| accept: text/xml               | GET data in XML format       |
| accept: text/json              | GET data in JSON format      |
| content-type: application/xml  | PUT/POST data in XML format  |
| content-type: application/json | PUT/POST data in JSON format |

## Additonal info

Run 'man curl' in your terminal