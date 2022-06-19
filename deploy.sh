#!/usr/bin/env bash

dfx deploy uamagicals_nft_container --no-wallet --argument \
"(record {
    name = \"UKRAINIAN MAGICALS\";
    symbol = \"UAMNFT\";
    logo = opt record {
        data = \"$(base64 -i ./logo.png)\";
        logo_type = \"image/png\";
    };
    custodians = opt vec { principal \"$(dfx identity get-principal)\" };
})"

dfx deploy nft_assets --no-wallet --argument "()"
