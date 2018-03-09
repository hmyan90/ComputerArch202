from Cython.Build import cythonize
from Cython.Distutils.extension import Extension
#from distutils.core import setup
from datetime import datetime
#import multiprocessing
import sys
import os

if __name__ ==  "__main__":

    # set up instruction count
    insCnt = str(sys.argv[1])
    extensions = []
    for i in range(1,9):
      extensions.append(Extension("lib%s_%d" %(insCnt, i), ["lib%s_%d.py" %(insCnt, i)]));

    # set up thread
    threads = int(sys.argv[2])
    print "Start process %s instructions with %d threads" %(insCnt, threads)
    del sys.argv[1]
    del sys.argv[1]
    
    # start work ...
    start = datetime.now()
    ext_modules=cythonize(extensions, force=True, nthreads=threads)
    end = datetime.now()
    print "delay is: " + str(end - start)
