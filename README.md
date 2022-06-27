# docmkr

This tool simply uses [Pandoc](https://pandoc.org/) and [GNU Make](https://www.gnu.org/software/make/) to convert multiple documents.

> **Note** If you want to convert files into pdf, you need to have pdflatex installed.

## Usage

1. Clone this repo
1. Put the files you want to convert into `src/`
1. If you have images, put them into `img/` and reference them from the root of this project.
1. Run `make -j pdf` or any other format that Pandoc supports.
1. Collect your converted files from `dist/`
