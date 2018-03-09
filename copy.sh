#!/bin/bash

for i in {1..8..1}
  do
    cp lib4B.py lib4B_${i}.py
    cp lib16B.py lib16B_${i}.py
    cp lib64B.py lib64B_${i}.py
    cp lib256B.py lib256B_${i}.py
    cp lib1T.py lib1T_${i}.py
  done


