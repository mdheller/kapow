#
# Copyright 2019 Banco Bilbao Vizcaya Argentaria, S.A.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
Feature: Fail to retrieve route details in Kapow! server.
  When trying to get route details for a route that
  does no exist the server responds with an error.

  Scenario: Try to get details for a nonexistent route.
    A request for retrieving details for a nonexistent
    route will trigger a not found error.

    Given I have a just started Kapow! server
    When I get the route with id "xxxxxxxx-xxxx-Mxxx-Nxxx-xxxxxxxxxxxx"
    Then I get 404 as response code
      And I get "Not Found" as response reason phrase
