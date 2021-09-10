{
  description = "Minimal flake template for development environments";
  outputs = { self, nixpkgs }: {
    defaultTemplate.path = ./template;
    defaultTemplate.description = "";
  };
}
