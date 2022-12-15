# docmkr

This tool simply uses [Pandoc](https://pandoc.org/) and [GNU Make](https://www.gnu.org/software/make/) to convert multiple documents.

> **Note** If you want to convert files into pdf, you need to have pdflatex installed.

## Usage

1. Clone this repo.
2. Create `src/`, `dist/`, and `img/` directories.
3. Put the files you want to convert into `src/`.
4. If you have images, put them into `img/` and reference them from the root of this project.
5. Run `make -j pdf` or any other format that Pandoc supports.
6. Collect your converted files from `dist/`.
