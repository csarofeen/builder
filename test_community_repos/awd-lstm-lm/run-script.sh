pushd awd-lstm-lm
python main.py --data data/wikitext-2 --batch_size 20 --dropouti 0.4 --dropouth 0.25 --seed 141 --epoch 1 && \
python -u main.py --data data/wikitext-2 --model QRNN --batch_size 20 --clip 0.2 --wdrop 0.1 --nhid 1550 --nlayers 4 --emsize 400 --dropouth 0.3 --seed 9001 --dropouti 0.4 --epochs 1 
RETURN=$?
popd
exit $RETURN
