#!/usr/bin/python

from panflute import *


#def helper( link ):
#  if link != []:

def replaceVSCPathInLink( elem, doc ):
#  if type(elem)==Link:
    #elem.target = elem.content.target.upper()
   if hasattr( elem, 'target' ):
#    print elem.text 
    return elem
#  toReplace = "</cluster-doc"
#  if hasattr( elem, 'target' ):
#  try:
#    print( elem )
#  except:
#    asdf = 0
#  if type(elem) == Link:
#    print( elem.Target )
 #   print( elem.target )
#  asdf=1


def main(doc=None):
  return run_filter( replaceVSCPathInLink, doc=doc )

if __name__ == "__main__":
  main()
