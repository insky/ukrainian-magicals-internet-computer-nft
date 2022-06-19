#### Mint example

```
dfx canister call uamagicals_nft_container mint \
  "(
    principal \"$(dfx identity get-principal)\",
    1:nat,
    vec {
      record {
        \"location\";
        variant {
          TextContent = \"FIXME: url\"
        }
      };
      record {
        \"custom\";
        variant {
          NestedContent = vec {
            record {
              \"nested_custom\";
              variant {
                NatContent = 1:nat
              }
            }
          }
        }
      }
    }
  )"
```
