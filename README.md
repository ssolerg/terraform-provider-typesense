<div align="center">
  <h1>Terraform Provider for Typesense</h1>
  <strong>This is a Terraform provider for Typesense</strong>
</div>

<hr>

## Support

- Supports v0.21.0 version of Typesense.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= v0.12.0 (v0.11.x may work but not supported actively)

## Building The Provider

Clone repository to: `$GOPATH/src/github.com/ronati/terraform-provider-typesense`

```console
$ mkdir -p $GOPATH/src/github.com/ronati; cd $GOPATH/src/github.com/ronati
$ git clone git@github.com:ronati/terraform-provider-typesense
Enter the provider directory and build the provider

$ cd $GOPATH/src/github.com/ronati/terraform-provider-typesense
$ make build
```
