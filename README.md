# pw_openstack_clients-cookbook

Installs and configures openstack_clients

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['pw_openstack_clients']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### pw_openstack_clients::default

Include `pw_openstack_clients` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[pw_openstack_clients::default]"
  ]
}
```

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
