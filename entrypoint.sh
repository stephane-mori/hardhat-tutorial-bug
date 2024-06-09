#!/bin/sh

npm install

npx hardhat node &
sleep 5
npx hardhat ignition deploy ./ignition/modules/Lock.ts --network localhost
