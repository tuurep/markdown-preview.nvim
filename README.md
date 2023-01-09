Forked from [iamcco/markdown.nvim](https://github.com/iamcco/markdown-preview.nvim)

# Why?

The point of this fork is only to modify browser favicon and browser tab title :smiley:

I've set favicon as this: ![new favicon](app/_static/favicon.ico)

I wanted the title of the browser tab to be the full filename (so include `.md` or `.markdown` extension), but the upstream code trims the file extension outside of the user setting that allows formatting the title string.

I'm tracking upstream and merging changes and fixes.

# Setup for Vim (8+) and NeoVim

Requires `yarn` to build and install

## With vim-plug:

See [vim-plug](https://github.com/junegunn/vim-plug)

Add this in your `.vimrc` or `init.vim`:

```
Plug 'tuurep/markdown-preview.nvim', { 'do': './build-hook.sh' }
```

Other Vim/NeoVim plugin managers would need to similarly run the *build-hook* as a post-update-hook, as I don't track the build output files (at `app/out/`) in this repo, unlike in upstream.

To build manually, run at project root:

```
yarn install
yarn build
cd app
yarn install
```

(this is what's in `build-hook.sh`, too)
