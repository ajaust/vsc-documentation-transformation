# VSC documentation transformation

Last updated: 2018-10-04

## Files and directories

- `make_all.sh`: Converts all `html` files in `pandoc/clean_html/` into restructuredText (`rst`) files and stores them in `pandoc/generated_rst/`
- `pandoc/`: Stores files and directories for conversion of `html` to `rst` files. The script `convert_all_html_to_rst.sh` converts all files it finds in `clean_html` subdirectory. `vscPathFilter.py` was a try to write a `pandoc` filter in order to convert link targets that does not work at the moment.
- `docs/`: Contains the project to create a website from the `rst` files. The directory also contains the configuration file to create such a website with `sphinx`. 

## Documentation on readthedocs

- The documentation is published through [https://readthedocs.org/](https://readthedocs.org/) on [https://vsc-documentation-transformation.readthedocs.io/en/latest/](https://vsc-documentation-transformation.readthedocs.io/en/latest/)
- Web hooks are active to rebuild the documentation for every `pull` and each `pull` request (standard settings)
- I basically followed the documentation on [https://dont-be-afraid-to-commit.readthedocs.io/en/latest/documentation.html](https://dont-be-afraid-to-commit.readthedocs.io/en/latest/documentation.html)

## Dependencies

- `pandoc`: Some `2.x` version as older version do now work well with anchors in `html` files. Tested with 2.3
- `sphinx`: Tested with 1.3.6

## Issues 

- Cannot convert websites directly from [https://www.vscentrum.be](https://www.vscentrum.be)
    - Certificate of VSC is not acknowledged
    - I tried to trust the certificate manually, but it did not work out properly. This might be related to the current certificate issues due to the migration of the website.
```bash
pandoc -s -r html https://www.vscentrum.be/cluster-doc/development/blas-lapack -o example12.text
pandoc: TlsExceptionHostPort (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))) "www.vscentrum.be" 443
```
- Pages delivered by CMS contain plenty of `<div>` and other statements that confuse `pandoc`. Using `pandoc` without sanitizing the `html` page first does give poor results
- The header (or `<h1>`) title of the website is in the CMS and not stored in the generated `html` file.
- Without a filter `pandoc` cannot keep anchors defined in `html`, see [https://github.com/jgm/pandoc/issues/3319](https://github.com/jgm/pandoc/issues/3319)
    - We cannot keep anchors in headlines without some intervention. Maybe some special `pandoc` filter?
- Internal links do not work. 
    - I think the paths generated might not point to the right directory structure.
    - There might be a difference in the file name of the generated `rst`/`html` file and the `html` file exported from the VSC homepage.
        - Example: `intel_toolchain.html` vs link `/cluster-doc/development/toolchain-intel` in the clean html file
- Headlines seem to be all in the same hierarchy level `<h2>`. Thus all headlines appear in the index of the generated HTML page.
