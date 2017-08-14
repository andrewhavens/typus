module Admin::Resources::DataTypes::TextHelper

  def display_text(item, attribute)
    value = item.send(attribute)
    if value.present?
      value.is_a?(Array) ? value.join(", ") : value
    else
      mdash
    end
  end

  def table_text_field(attribute, item)
    raw_content = item.send(attribute)
    if raw_content.present?
      raw_content = raw_content.join(", ") if raw_content.is_a?(Array)
      truncate(raw_content)
    else
      mdash
    end
  end
end
