{
  description = "Minimal flake template for development environments";

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in with pkgs; mkShell { buildInputs = [ ]; };
  };
}
