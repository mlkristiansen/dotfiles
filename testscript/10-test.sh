#!/usr/bin/env bash
find testdir -type f | xargs chmod u=Xrw,g=r,o=r
echo
sudo run-parts --arg=$(pwd) testdir/
