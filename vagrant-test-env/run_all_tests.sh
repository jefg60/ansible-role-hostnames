#!/bin/bash

bats /vagrant/tests/ | tee /vagrant/tests/results/TAP-$(hostname)

#This causes us to exit with the exit code of the bats not the tee
exit ${PIPESTATUS[0]}
