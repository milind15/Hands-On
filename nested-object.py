a = {'x': {'y': {'z': 'a'}}}
key = "x/y/z"
key_list = key.split('/')
length = len(key_list)
for i in range(0,length):
    a = a[key_list[i]]
    print(a)