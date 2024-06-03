certoraRun \
  contracts/Marketplace.sol \
--verify Marketplace:certora/specs/Marketplace.spec \
--optimistic_loop \
--loop_iter 3 \
--rule_sanity "basic" \
--msg "Verifying Marketplace.sol"
