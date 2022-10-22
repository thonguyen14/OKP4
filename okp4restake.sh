#!/bin/bash
for (( ;; )); do
    echo -e "\033[0;32mCollecting rewards!\033[0m"
    okp4d tx distribution withdraw-rewards okp4valoper1k3galpljmw7x88mppxwgal7929jzyg2w4fzpj7 --commission --from=wtu --chain-id=okp4-nemeton --node="http://127.0.0.1:31657 --gas=auto --gas-adjustment=1.5 -y
    echo -e "\033[0;32mWaiting 30 seconds before requesting balance\033[0m"
    sleep 30
    AMOUNT=$(okp4d q bank balances okp41k3galpljmw7x88mppxwgal7929jzyg2wqwjgvl --node="http://127.0.0.1:31657" | grep amount | awk '{split($0,a,"\""); print a[2]}')
    AMOUNT=$(($AMOUNT - 1000000))
    AMOUNT_STRING=$AMOUNT"uknow"
    echo -e "Your total balance: \033[0;32m$AMOUNT_STRING\033[0m"
    okp4d tx staking delegate okp4valoper1k3galpljmw7x88mppxwgal7929jzyg2w4fzpj7 11000000uknow --from=wtu --chain-id=okp4-nemeton --node="http://127.0.0.1:31657" --gas=auto --gas-adjustment=1.5 -y
    echo -e "\033[0;32m$AMOUNT_STRING staked! Restarting in 10800 sec!\033[0m"
    sleep 10800
done
