# zhparser
postgres full text search

## Create Extension
```sql
CREATE EXTENSION zhparser;
CREATE TEXT SEARCH CONFIGURATION chinese_zh (PARSER = zhparser);
ALTER TEXT SEARCH CONFIGURATION chinese_zh ADD MAPPING FOR n,v,a,i,e,l WITH simple;
```
config descriptions:
* "chinese_zh" is a custom name, change to what you like.
* "n,v,a,i,e,l,t" is the token types, unmapped token types would not be used for document tockenize. Use \dFp+ zhparser to list all token types zhparser populates.

from https://github.com/chen-xin/docker_zhparser

## components
* postgres: from postgres
* postgis: symbolspace/postgis
* zhparser: https://github.com/amutu/zhparser/

## version
### 13.4
* from symbolspace/postgis:13.4
* docker image : symbolspace/zhparser:13ˇ˘symbolspace/zhparser:13.4ˇ˘13ˇ˘symbolspace/zhparser:latest