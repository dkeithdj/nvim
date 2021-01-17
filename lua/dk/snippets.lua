local indent = require'snippets.utils'.match_indentation
local fcomment = require'snippets.utils'.force_comment
local snipPlug = require'snippets'

local snips = {}

snips._global = {
  todo = fcomment [[TODO (dkeith: )]];
  copyright = fcomment [[Copyright (C) Denrei Keith ${=os.date("%Y-%m-%d")}]];
};

snips.lua = {
  req = [[local ${2:${1|S.v:match"([^.()]+)[()]*$"}} = require '$1']];
  ["for"] = indent [[
  for ${1:i}, ${2:v} in ipairs(${3:t}) do
    $0
  end]];
};

snips.python = {
  def = indent [[
def $1($2):
  $0]];
}

snips.cpp = {
  main = indent [[
int main() {
  $0

  return 0;
}]];

  ["if"] = indent [[
if ($1) {
  $0
}]];
};

snipPlug.snippets = snips
snipPlug.use_suggested_mappings()
