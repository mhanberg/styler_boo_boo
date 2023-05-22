# StylerBooBoo

Hello Matt and Greg, hope you are doing well.

Here I have a Surface template that accesses a map key on an assign, which crashes styler.

I have tested this with `mix style`.

## Output

```
mix style failed for file: lib/styler_boo_boo_web/live/demo.ex
** (FunctionClauseError) no function clause matching in :elixir.string_to_tokens/5    
    
    The following arguments were given to :elixir.string_to_tokens/5:
    
        # 1
        '@foo.bar'
    
        # 2
        12
    
        # 3
        1
    
        # 4
        nil
    
        # 5
        [preserve_comments: #Function<9.82209453/5 in Code."-fun.preserve_comments/5-">, unescape: false, warn_on_unnecessary_quotes: false, literal_encoder: #Function<6.82209453/2 in Code.format_string!/2>, token_metadata: true, emit_warnings: false, trailing_newline: true, indent: 3, file: nil, line: 12, sigil: :F, modifiers: [], opening_delimiter: "\"\"\"", import_deps: [:phoenix, :surface], plugins: [Phoenix.LiveView.HTMLFormatter, Surface.Formatter.Plugin], inputs: ["*.{heex,ex,exs}", "{config,lib,test}/**/*.{heex,ex,exs}", "{lib,test}/**/*.sface"]]
    
    (elixir 1.14.3) lib/code.ex:1061: Code.string_to_quoted_with_comments/2
    (elixir 1.14.3) lib/code.ex:1084: Code.string_to_quoted_with_comments!/2
    (elixir 1.14.3) lib/code.ex:776: Code.format_string!/2
    lib/surface/formatter/phases/render.ex:38: Surface.Formatter.Phases.Render.render_node/2
    (elixir 1.14.3) lib/enum.ex:1658: Enum."-map/2-lists^map/1-0-"/2
    (elixir 1.14.3) lib/enum.ex:1658: Enum."-map/2-lists^map/1-0-"/2
    lib/surface/formatter/phases/render.ex:185: Surface.Formatter.Phases.Render.render_node/2
```

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
