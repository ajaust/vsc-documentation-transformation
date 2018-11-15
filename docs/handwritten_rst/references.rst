.. _reference_page-label:

Test page for references
========================

This page is for testing and explaining references. You can find references to the sections in this page on the page about :ref:`directives-label`. More precisely, look at :ref:`directives-links-label`.


A lot of information on cross-references can be found on the sphinx documentation page at: http://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html

.. _reference_page_hyperlinks-label:

Hyperlinks
----------

A short introduction to hyperlinks can be found in the `reStructuredText Primer on the Sphinx documentation page <http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#hyperlinks>`_.

.. _reference_page_external-label:

External references
^^^^^^^^^^^^^^^^^^^

There are two ways to generate external links (i.e. some web address for example).

#. Inline links like to the `VSC homepage <https://www.vscentrum.be/>`_.
   ::
   
      Inline links like to the `VSC homepage <https://www.vscentrum.be/>`_.

#. If you write normal text containing a web address  https://www.vscentrum.be/ or a mail address alex@example.be no markup is needed. It is parsed automatically.

#. Seperate link and target definition link in this `link definition`_ also leading to the VSC homepage. 

   #. Link in text

      ::

          ...definition link in this `link definition`_ also leading..

   #. Target definition

      :: 

         .. _link definition: https://www.vscentrum.be/

#. If you want a link that opens in a new window/tab you have to use some html. The solution I have found was on |stackoverflow| (as always). 

   #. Link in text

      .. code-block:: none
      
         ...was on |stackoverflow| (as always).

   #. Target definition

      ::

         .. |stackoverflow| raw:: html
         
         <a href="https://stackoverflow.com/questions/11716781/open-a-link-in-a-new-window-in-restructuredtext" target="_blank">stackoverflow</a>

More information on hyperlinks is also available on the `docutils homepage <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#hyperlink-targets>`_.

.. _reference_page_internal-label:

Internal references
^^^^^^^^^^^^^^^^^^^

The page contains an anchor to its headline. The anchor looks like this in the code:

::

   .. reference_page_1-label:

It is important that it starts with two dots and an empty space. 


One can reference to a label like the top of this page :ref:`reference_page-label`.


reStructuredText allows different types of links to sections, but advises against it. 

.. note:: 

   Using ref is advised over standard reStructuredText links to sections 
   (like ```Section title```) because it works across files, when section
   headings are changed, and for all builders that support cross-references.

   Source: `Link <http://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#cross-referencing-arbitrary-locations>`_





.. _link definition: https://www.vscentrum.be/

.. |stackoverflow| raw:: html

  <a href="https://stackoverflow.com/questions/11716781/open-a-link-in-a-new-window-in-restructuredtext" target="_blank">stackoverflow</a>
