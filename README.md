# zhparser
postgres full text search

* postgres : from symbolspace/postgis  ( v12)
* zhparser


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
