import boto3

db = boto3.resource("dynamodb")
#subscriptions = db.Table("twitch_discord_subscriptions")
table = db.Table("jmtest")

#item = {
#    "jmokey": "hello",
#    "not_name": "I'm a thing!"
#}

#table.put_item(Item=item)

def read_item(table, key):
    result = table.get_item(Key={"jmokey": key})
    try:
        return result['Item']
    except KeyError as exc:
        raise KeyError(f"Key '{key}' not found in table.") from exc

def write_item(table, key, data):
    item = { "jmokey": key }
    item.update(data)
    table.put_item(Item=item)

print(read_item(table, "sdojnifg"))