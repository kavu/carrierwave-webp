# Carrierwave::WebP

This gem provides an ugly, but working solution for converting uploads to the WebP format.

I created it as an expirement, so gem's API can change in the future. I you're warned!

## Installation

Just add this line to your application's Gemfile:

```ruby
gem 'carrierwave-webp'
```

## Usage

Here is an example of usage:

```ruby
# This is some basic image uploader
class ImageUploader < ::CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include CarrierWave::WebP::Converter

  version :show do
    process resize_to_fill: [100, 100]
    process convert: :png
    process :convert_to_webp # Add this to enable WebP Conversion
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
