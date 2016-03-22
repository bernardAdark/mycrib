# mycrib
mymrib is an API for all commercial residence
## Crib

This is our high-quality Mycribs API. You can use this API to request
and remove different wobbles at a low wibble price.

### List Cribs

Lists all Cribs. Returns all cribs from the server with. Each crib in the list has its attributes and its relations about tenants and owner.
Accepts a appication/json or text/html request

```endpoint
GET localhost:3000/cribs/
```

#### Example request

```curl
$ curl https://localhost:3000/cribs 
```

```bash
$ wbl cribs list
```

```javascript
client.listWobbles(function(err, wobbles) {
  console.log(wobbles);
});
```

```Ruby
wobbles.list()
```

#### Example response

```json
[
  { "attributes": {
      "id": "2",
      "location": "Asafo",
      "number_of_tenants": "2"
      },
      "rels": {
         "tenants": [
            {
            "id": 5,
            "name": "Rhoda",
            "link": "localhost:3000/cribs/2/tenants/5"
            },
            {
            "id": 7,
            "name": "Osei",
            "link": "localhost:3000/cribs/3/tenants/7"
            }
         ],

         "owner": {
          "name": "Kwasi Wusu"
         },
      "link": "localhost:3000/cribs/2"   
    }

    { "attributes": {
      "id": "2",
      "location": "Asafo",
      "number_of_tenants": "2",
      },
      "rels": {
         "tenants": [
            {
            "id": 5,
            "name": "Rhoda",
            "link": "localhost:3000/cribs/2/tenants/5"
            },
            {
            "id": 5,
            "name": "Osei",
            "link": "localhost:3000/cribs/3/tenants/7"
            }
         ],

         "owner": {
          "name": "Kwasi Wusu"
         },
      "link": "localhost:3000/cribs/2"   
    }
  
]
```

### Find Crib

Find a specific crib with an id.
The Api produces a json response with attributes of the crib and and its tenants and owner relations.
It consumes or accepts application/json or text/html

```endpoint
GET localhost:3000/cribs/2
```

#### Example request

```curl
$ curl https://localhost:3000/cribs/2 
```

```bash
$ wbl crib
```

```javascript
client.listCribs(function(err, crib) {
  console.log(crib);
});
```

```Ruby
wobbles.list()
```

#### Example response

```json

  { "attributes": {
      "id": "2",
      "location": "Asafo",
      "number_of_tenants": "2"
      },
      "rels": {
         "link": "localhost:3000/cribs/2" ,
         "tenants": [
            {
            "id": 5,
            "name": "Rhoda",
            "link": "localhost:3000/cribs/2/tenants/5"
            },
            {
            "id": 5,
            "name": "Osei",
            "link": "localhost:3000/cribs/3/tenants/7"
            }
         ],

         "owner": {
          "name": "Kwasi Wusu"
         }
      
    }
  }
```
You can read more on the documentation at https://github.com/bernardAdark/myCrib-doc/

