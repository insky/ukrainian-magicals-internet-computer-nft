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

#### Set name
```
dfx canister --network ic call uamagicals_nft_container setName "(\"Ukrainian Magicals\")"
```

#### Set symbol
```
dfx canister --network ic call uamagicals_nft_container setSymbol "(\"UAMNFT\")"
```
