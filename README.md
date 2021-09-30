A very simple flake template that I use for development environments.

Here is more complete example:

```nix
{
  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = with import "${nixpkgs}" {
      system = "x86_64-linux";

      # Allow unfree packages
      allowUnfree = true;
    };
      mkShell {
        buildInputs = [
          # Dependencies
          gcc
        ];

        # Sometimes it's useful to set environment variables such as
        # LD_LIBRARY_PATH. Here is an example of packages needed for
        # developing vulkan & wayland programs.
        LD_LIBRARY_PATH = lib.makeLibraryPath [
          libxkbcommon
          vulkan-loader
          vulkan-tools-lunarg
          vulkan-validation-layers
          wayland
        ];

      };
  };
}
```
