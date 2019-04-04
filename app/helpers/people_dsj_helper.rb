# encoding: utf-8

#  Copyright (c) 2012-2016, Dachverband Schweizer Jugendparlamente. This file is part of
#  hitobito_dsj and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_dsj.

module PeopleDsjHelper

  def format_salutation(person)
    person.salutation_label
  end

  def format_correspondence_language(person)
    lang = person.correspondence_language
    if lang
      Settings.application.correspondence_languages.to_hash.with_indifferent_access[lang]
    end
  end

end
