# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

# Tests to skip
$global:SkippedTests = $(
    'TestGetAllVirtualNetworksOData',
    'TestGetAllPublicIpAddressesOData'
)

# Quota variables
$global:TestQuotaMaxPublicIpsPerSubscription = 32
$global:TestQuotaMaxVnetsPerSubscription = 32
$global:TestQuotaMaxVirtualNetworkGatewaysPerSubscription = 16
$global:TestQuotaMaxVirtualNetworkGatewayConnectionsPerSubscription = 32
$global:TestQuotaMaxLoadBalancersPerSubscription = 32
$global:TestQuotaMaxNicsPerSubscription = 4
$global:TestQuotaMaxSecurityGroupsPerSubscription = 2

$global:PutAndDeleteQuotaName = "TestQuotaForRemoval"
$global:PutAndDeleteQuotaWithParamsName = "TestQuotaForRemovalWithParams"
$global:CreateAndUpdateQuotaName = "TestQuotaUpdate"
$global:PutNewQuotaName = "TestQuotaPutNew"
$global:SetQuotaName = "TestQuotaSet"
$global:DeleteQuotaName = "TestQuotaDelete"
$global:MaxNicsPerSubscription = 8

# Common functions
function ValidateBaseResources {
    param(
        [Parameter(Mandatory = $true)]
        $Resource
    )

    $Resource          | Should Not Be $null
    $Resource.Id       | Should Not Be $null
    $Resource.Name       | Should Not Be $null
}
function ValidateBaseResourceTenant {
    param(
        [Parameter(Mandatory = $true)]
        $Tenant
    )

    $Tenant                  	| Should Not Be $null
    $Tenant.SubscriptionId   | Should Not Be $null
    $Tenant.TenantResourceUri   | Should Not Be $null
}

if (Test-Path "$PSScriptRoot\Override.ps1") {
    . $PSScriptRoot\Override.ps1
}