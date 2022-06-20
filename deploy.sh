#!/usr/bin/env bash

NETWORK='--network local'
# NETWORK='--network ic'

DESCRIPTION='unique NFT collection created by Ukrainian augmented reality team called Magicals within the framework of Supernova
Internet Computer Web3 Hackathon'

# $(dfx canister id dip721_nft_container)

dfx deploy $NETWORK --no-wallet

dfx canister $NETWORK call uamagicals_nft_container setName "(\"Ukrainian Magicals\")"

dfx canister $NETWORK call uamagicals_nft_container setSymbol "(\"UAMAG\")"

dfx canister $NETWORK call uamagicals_nft_container setLogo "(\"$(base64 -i ./logo.png)\")"

# FIXME: add  locationHash BlobContent = $(sha256sum assets/1.png)
dfx canister $NETWORK call uamagicals_nft_container mint \
  "(
    principal \"$(dfx identity get-principal)\",
    1:nat,
    vec {
      record {
        \"location\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/1.png\"
        }
      };
      record {
        \"contentType\";
        variant {
          TextContent = \"image/png\"
        }
      };
      record {
        \"title\";
        variant {
          TextContent = \"#1 Kyiv\"
        }
      };
      record {
        \"description\";
        variant {
          TextContent = \"${DESCRIPTION}\"
        }
      };
      record {
        \"arexport\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/1.arexport\"
        }
      };
      record {
        \"arViewLink\";
        variant {
          TextContent = \"https://www.instagram.com/ar/1037867120437159/\"
        }
      };
    }
  )"

dfx canister $NETWORK call uamagicals_nft_container mint \
  "(
    principal \"$(dfx identity get-principal)\",
    2:nat,
    vec {
      record {
        \"location\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/2.png\"
        }
      };
      record {
        \"contentType\";
        variant {
          TextContent = \"image/png\"
        }
      };
      record {
        \"title\";
        variant {
          TextContent = \"#2 Kalush\"
        }
      };
      record {
        \"description\";
        variant {
          TextContent = \"${DESCRIPTION}\"
        }
      };
      record {
        \"arexport\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/2.arexport\"
        }
      };
      record {
        \"arViewLink\";
        variant {
          TextContent = \"https://www.instagram.com/ar/392422939602960/\"
        }
      };
    }
  )"

dfx canister $NETWORK call uamagicals_nft_container mint \
  "(
    principal \"$(dfx identity get-principal)\",
    3:nat,
    vec {
      record {
        \"location\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/3.png\"
        }
      };
      record {
        \"contentType\";
        variant {
          TextContent = \"image/png\"
        }
      };
      record {
        \"title\";
        variant {
          TextContent = \"#3 Lviv\"
        }
      };
      record {
        \"description\";
        variant {
          TextContent = \"${DESCRIPTION}\"
        }
      };
      record {
        \"arexport\";
        variant {
          TextContent = \"https://dydxz-fqaaa-aaaag-aanla-cai.raw.ic0.app/2.arexport\"
        }
      };
      record {
        \"arViewLink\";
        variant {
          TextContent = \"https://www.instagram.com/ar/500413538502681/\"
        }
      };
    }
  )"
