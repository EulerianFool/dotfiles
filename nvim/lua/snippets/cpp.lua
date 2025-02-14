local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("cpp", {
	s(
		"intro",
		fmt(
			[[
#include <iostream>
using namespace std;
typedef long long LL;
#define fastIO ios_base::sync_with_stdio(0);cin.tie(0);

void solve(){
	$^
}

int32_t main(){
	fastIO
  bool TEST = $^;
  int t = 1;
  if(TEST) cin >> t;
  
	while(t--){
		solve();
	}
}
  ]],
			{
				-- i(1) is at nodes[1], i(2) at nodes[2].
				i(1),
				i(2, "true"),
			},
			{
				delimiters = "$^",
			}
		)
	),
})
